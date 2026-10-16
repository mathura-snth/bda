import numpy as np
import oracledb
import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity

model = SentenceTransformer('paraphrase-multilingual-MiniLM-L12-v2')


def control_find(conn, nombre, formation):
    cur = conn.cursor()
    cur.callproc("CONTROL_F_MFB", [nombre, formation, 75, 35])
    cur.close()

    df = pd.read_sql("SELECT * FROM W1", conn)
    nom_colonne = df.columns[1]


    embeddings1 = model.encode(df[nom_colonne].tolist())
    embeddings2 = model.encode([formation])

    cos = [cosine_similarity([e1], embeddings2)[0][0] * 100 for e1 in embeddings1]

    df["COS"] = [round(score, 2) for score in cos]

    df["SCORE"] = (df["EDS"] + df["JWS"] + df["QG1"] + df["COS"]) / 4

    df = df.sort_values("SCORE", ascending=False)

    return df[[nom_colonne, "SCORE"]].head(3)

conn = oracledb.connect(user="SYSTEM", password="123456MDP", dsn="localhost/XEPDB1")

print(control_find(conn, 1, 'PROduction-Lean'))
print(control_find(conn, 1, 'droit'))

print(control_find(conn, 3, 'poser bi'))
print(control_find(conn, 3, 'power bi'))
print(control_find(conn, 3, 'excel'))