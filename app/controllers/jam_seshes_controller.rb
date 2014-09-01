class JamSeshesController < ApplicationController

  def create
    params[:jam_sesh].merge!(creator_id: current_user.id)
    @jam_sesh = JamSesh.new(jam_sesh_params)
    if @jam_sesh.save
      UserJamSesh.create(user: current_user, jam_sesh: @jam_sesh)
      redirect_to :back
    else
      redirect_to :back, :flash => { :jam_sesh_errors => @jam_sesh.errors.messages.values }
    end
  end

  def reply
    @jam_sesh = JamSesh.find(params[:id])
    @jam_sesh.update(accepted?: true)
    redirect_to :back
  end

  private

  def jam_sesh_params
    params.require(:jam_sesh).permit(:name, :content, :sesh_date, :creator_id, :receiver_id)
  end

end
