# Tweets_NASDAQ
*Proyecto big data UNAL 2021-I.*

1. Usar (script SQL)[https://github.com/Neyfer29/Tweets_NASDAQ/blob/main/Base_Datos/Creacion_BD_TwitterNASDAQ_1_test.sql] para construir base de datos en MariaDB. Basta con el comando: source ruta_scriptSQL.sql
2. El notebook de python [Carga de datos][https://nbviewer.jupyter.org/github/Neyfer29/Tweets_NASDAQ/blob/main/Base_Datos/Carga_Datos_Kaggle_Twitter_YahooFinance.ipynb] permite cargar los datos desde dataframes a pandas extrayendolos desde distintas fuentes.
3. Los datos se encuentran en (Kaggle)[https://www.kaggle.com/omermetinn/tweets-about-the-top-companies-from-2015-to-2020 y https://www.kaggle.com/omermetinn/values-of-top-nasdaq-copanies-from-2010-to-2020]
 
 
 *Análisis textual*
 
 1. Revisión conjunto de datos Sentiment140 
 2. Revisión conjunto de datos Financial Phrase Bank
 3. Revisión conjunto de datos Tweets NASDAQ
 4. Revisión conjunto de datos Tweets NASDAQ (fuente base con marcación)
 5. Análisis textual final (AAPL)
 
 *Análisis de sentimiento*
 
 1. Ajuste fino
 2. Huggingface - DISTLBERT y BERT

 *Modelo*
 
 1. Unión bases y creación de indicadores de tendencia en la serie y de polaridad de los Tweets
 2. Modelo LSTM - Binario
 3. Modelo LSTM - Multiclase
 
