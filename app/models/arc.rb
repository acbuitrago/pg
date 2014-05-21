class Arc
  include MongoMapper::Document
  key :inicio,  ObjectId
  key :fin,  ObjectId
  key :trayectorias, Array
  many :trajectories, :in => :trayectorias
end
