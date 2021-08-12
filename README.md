# Tweets_NASDAQ
*Proyecto big data UNAL 2021-I*

*Neyfer Leandro Gómez Gil - Maria Camila Góngora Albán*

*Creación Base de datos y carga de datos*

1. Usar [script SQL](https://github.com/Neyfer29/Tweets_NASDAQ/blob/main/Base_Datos/Creacion_BD_TwitterNASDAQ_1_test.sql) para construir base de datos en MariaDB. Basta con el comando: source ruta_scriptSQL.sql
2. El notebook de python [Carga de datos](https://nbviewer.jupyter.org/github/Neyfer29/Tweets_NASDAQ/blob/main/Base_Datos/Carga_Datos_Kaggle_Twitter_YahooFinance.ipynb) permite cargar los datos desde dataframes a pandas extrayendolos desde distintas fuentes (Twitter, Yahoo Finance y csv's de Kaggle).
3. Los datos se encuentran en [Kaggle Tweets](https://www.kaggle.com/omermetinn/tweets-about-the-top-companies-from-2015-to-2020) y [Kaggle values](https://www.kaggle.com/omermetinn/values-of-top-nasdaq-copanies-from-2010-to-2020). Fuente: Conferencia Internacional en Big Data del 2020 (IEEE) bajo la sexta sesión acerca de Minería Inteligente de Datos, el objetivo era determinar posibles especuladores e influyentes en el mercado de valores entre el 2 de enero de 2015 y el 30 de diciembre de 2019.
 
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
 
