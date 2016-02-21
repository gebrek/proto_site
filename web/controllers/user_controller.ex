defmodule ProtoSite.UserController do
	use ProtoSite.Web, :controller

	def index(conn, _params) do
		render conn, "user.html"
	end

end
