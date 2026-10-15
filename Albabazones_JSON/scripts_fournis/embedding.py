import os # Pour éviter les deadlocks sur macOS
os.environ["TOKENIZERS_PARALLELISM"] = "false"
os.environ["OBJC_DISABLE_INITIALIZE_FORK_SAFETY"] = "YES"
os.environ["USE_TF"] = "0"
os.environ["USE_TORCH"] = "1"

import oracledb
import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity

conn = oracledb.connect(user="SYSTEM", password="oracle123", dsn="localhost/FREEPDB1")

query = "SELECT IDVAL, VALEUR1, VALEUR2 FROM MATCHVAL WHERE VALEUR1 IS NOT NULL AND VALEUR2 IS NOT NULL"
df = pd.read_sql(query, conn)

model = SentenceTransformer('paraphrase-multilingual-MiniLM-L12-v2')

embeddings1 = model.encode(df['VALEUR1'].tolist())
embeddings2 = model.encode(df['VALEUR2'].tolist())

cos_sim = [cosine_similarity([e1], [e2])[0][0] * 100 for e1, e2 in zip(embeddings1, embeddings2)] ## A comprendre
df['cosine_sim'] = [round(score, 2) for score in cos_sim]

print(df[['IDVAL', 'VALEUR1', 'VALEUR2', 'cosine_sim']].head())

cursor = conn.cursor()

cursor.execute("ALTER TABLE MATCHVAL ADD cosine_sim NUMBER")
update_sql = "UPDATE MATCHVAL SET cosine_sim = :1 WHERE IDVAL = :2"
data_to_update = list(zip(df['cosine_sim'], df['IDVAL']))

cursor.executemany(update_sql, data_to_update)
conn.commit()

cursor.close()
conn.close()