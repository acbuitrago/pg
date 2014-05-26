class UsersController < ApplicationController
  def show
	num=params[:id].to_i
	str=params[:id]
	if(num<10)
		str="00"+str
	elsif (num<100)
		str="0"+str
	end
	@user=User.find_by_idN(str)
	@lugares= @user.places
	@trayectorias= @user.trajectories
	@hash = Gmaps4rails.build_markers(@lugares) do |lugar, marker|
		 marker.lat lugar.loc["lat"]
		 marker.lng lugar.loc["lon"]
		 marker.infowindow "Lugar visitado en #{lugar.diaSemana} <br /> #{lugar.avgHoraEntrada.strftime("%H:%M")} - #{lugar.avgHoraSalida.strftime("%H:%M")} <br /> #{lugar.avgHoraEntrada.strftime("%Y-%m-%d")}"
	end
	@trayectorias.each do |tray|
                t=[]
                muestras=tray.muestras
                i=0
                muestras.each do |m|
                        pos={:lat=>m["lat"],:lng=>m["lon"]}
                        if(i==0)
                                pos["strokeColor"]="#FF0000"
                                i=1
                        end
                        t.push(pos)
                end
                @polylines.push(t)
        end
  end
end
