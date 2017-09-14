class AccountsController < ApplicationController

  def check
    tuser = params[:user]
    tpass = params[:pass]

    @user = 'NG'
    @pass = 'NG'
    pa = Account.find_by(user:tuser)
    if pa.nil?
    else
      if pa.availability == false then
        @user = 'OK'
        if pa.pass == tpass
          @pass = 'OK'
        end
      end
    end
  end

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
  end

  def delete
    if request.get? then
      account = params[:account]
      if account != nil then
        ac = Account.find_by(user:account)
        ac.destroy
      end
    end
    redirect_to '/accounts/list'
  end

  def update
    if request.post? then
      if params[:commit] == "検索" then
        if params[:account] != "" then
          account = params[:account]
          if Account.find_by(user:account) != nil then
            @user = Account.find_by(user:account).user
            @pass = Account.find_by(user:account).pass
            @avail = Account.find_by(user:account).availability
            @msg = 'ヒットしました'
          else
            @msg = '該当のアカウントはありません'
          end
        end
      else
        if params[:commit] == "更新" then
          if params[:new_account] != "" then
            new_account = params[:new_account]
            new_pass = params[:new_pass]
            new_avail = params[:new_avail]
            obj = Account.find_by(user:new_account)
            obj.update(user: new_account,pass:new_pass,availability:new_avail)
          end
        end
      end
    end
  end

  def list
    @data=Array.new
    if request.post? then
      if params[:check] == "1234" then
        tables = Account.all
        @data = tables
      end
    end
  end

end
