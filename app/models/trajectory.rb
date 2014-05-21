class Trajectory
  include MongoMapper::Document
  key :muestras, Array
  key :lugares, Array
  many :places, :in => :lugares
  key :fin,  ObjectId
  one :place, :in => :fin
end
