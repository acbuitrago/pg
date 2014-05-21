class User
  include MongoMapper::Document
  key :lugaresVisitados, Array
  key :trayectorias, Array
  key :arcos, Array
  many :places, :in =>:lugaresVisitados
  many :trajectories, :in => :trayectorias
  many :arcs, :in => :arcos
end
