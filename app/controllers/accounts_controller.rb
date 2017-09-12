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

  def regist
    if request.post? then
      account = params[:account]
      pass = params[:password]
      Account.create(user:account, pass:pass,availability:true)
    end
    @data = Account.find_by(user:'murakami').user
  end

  def update
    if request.post? then
      account = params[:account]
      
      @user = Account.find_by(user:account).user
      @pass = Account.find_by(user:account).pass
      @avail = Account.find_by(user:account).availability
    end
  end

end
