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
	#puts @user._id.to_str
  end
end
