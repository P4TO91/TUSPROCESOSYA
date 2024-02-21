from sqlalchemy import create_engine, MetaData, Table, select
from sqlalchemy.orm import sessionmaker

# Crear una conexión a la base de datos
engine = create_engine('mysql+pymysql://root:Rosamistica@localhost/TUSPROCESOSYA')

# Crear una sesión
Session = sessionmaker(bind=engine)
session = Session()

# Obtén la tabla 'Registros'
metadata = MetaData()
registros = Table('Registros', metadata, autoload_with=engine)

# Ejecuta una consulta para obtener todos los registros
query = select(registros)
result = session.execute(query)

# Itera a través del ResultSet, por fila
for row in result:
    # Itera a través de todas las columnas en esta fila
    for column in row.keys():
        # Imprime el valor de la columna
        print(f'{column}: {row[column]}')
    print("---------------------")
