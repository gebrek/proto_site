defmodule ProtoSite.PantryController do
	use ProtoSite.Web, :controller

	def index(conn, _params) do
		render conn, "index.html"
	end
end
