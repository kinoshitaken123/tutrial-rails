{"filter":false,"title":"sessions_helper.rb","tooltip":"/generate/app/helpers/sessions_helper.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":2,"column":0},"action":"remove","lines":["module SessionsHelper","end",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":6,"column":3},"action":"insert","lines":["module SessionsHelper","","  # 渡されたユーザーでログインする","  def log_in(user)","    session[:user_id] = user.id","  end","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":3},"end":{"row":6,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1624495752778,"hash":"0e8430c0645bab970cfc3bf2e2f675d45274a991"}