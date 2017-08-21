class AccountsController < ApplicationController
  def manage
    if request.post? then

    else
      tuser = params[:user]
      tpass = params[:pass]

      @user = 'NG'
      @pass = 'NG'
      pa = Account.find_by(user:tuser)
      if pa.nil?
      else
        @user = 'OK'
        if pa.pass == tpass
          @pass = 'OK'
        end
      end
    end

  end
end
