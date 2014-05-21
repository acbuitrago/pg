class Place
  include MongoMapper::Document
  key :diaSemana, Integer
  key :avgHoraEntrada, Time
  key :avgHoraSalida, Time
  key :ultimaVez, Time
  key :frecuencia, Integer
  key :loc, Hash
end

