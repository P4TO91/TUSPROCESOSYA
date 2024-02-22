from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Registro(Base):
    __tablename__ = 'Registros'

    idRegistros = Column(Integer, primary_key=True, autoincrement=True)  # Nombre de columna ajustado y autoincrementado
    sujetos_procesales = Column(String, name='sujetos procesales')  # Nueva columna
    tipo_de_juzgado = Column(String, name='tipo de juzgado')  # Nueva columna
    nombre_del_juez = Column(String, name='nombre del juez')  # Nueva columna
    numero_del_juzgado = Column(Integer, name='numero del juzgado')  # Nueva columna

# Crear una conexión a la base de datos
engine = create_engine('mysql+pymysql://root:Rosamistica@localhost/TUSPROCESOSYA')

# Crear una sesión
Session = sessionmaker(bind=engine)
session = Session()

# Crear un nuevo objeto y añadirlo a la base de datos
nuevo_registro = Registro(sujetos_procesales='Juan Perez', tipo_de_juzgado='Civil', nombre_del_juez='Maria Rodriguez', numero_del_juzgado=5)
session.add(nuevo_registro)
session.commit()

# Leer un objeto de la base de datos
registro_existente = session.query(Registro).filter_by(idRegistros=1).first()
print(f'Sujetos Procesales: {registro_existente.sujetos_procesales}')

# Actualizar un objeto en la base de datos
registro_existente.sujetos_procesales = 'Pedro Gomez'
session.commit()

# Eliminar un objeto de la base de datos
session.delete(registro_existente)
session.commit()

# Ejecuta una consulta para obtener todos los registros
for registro in session.query(Registro):
    print(f'id: {registro.idRegistros}')  # Ajustado para usar 'idRegistros'
    print(f'Sujetos Procesales: {registro.sujetos_procesales}')
    print(f'Tipo de Juzgado: {registro.tipo_de_juzgado}')
    print(f'Nombre del Juez: {registro.nombre_del_juez}')
    print(f'Numero del Juzgado: {registro.numero_del_juzgado}')
    print('---')  # Para separar los registros
