

post "/verify_login" <!DOCTYPE html>
if params[:email]=="marc@gmail" && params [:password] = "whatever"
redirect to("happy page")
else
redirect to("/")
end
