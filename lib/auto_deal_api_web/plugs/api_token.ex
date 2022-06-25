defmodule AutoDealApiWeb.Plug.ApiToken do
  @moduledoc false
  @expected_hash :sha256
                 |> :crypto.hash("joseph-agustin-canilao")
                 |> Base.encode16()
                 |> String.downcase()

  def init(opts) do
    opts
  end

  def call(conn, _) do
    case conn |> Plug.Conn.get_req_header("authorization") do
      ["Bearer " <> token] ->
        decode_and_validate(token, conn)

      _ ->
        conn
        |> AutoDealApiWeb.Api.V1.FallbackController.call({:error, :unauthorized})
        |> Plug.Conn.halt()
    end
  end

  defp decode_and_validate(token, conn) do
    if token |> validate_token() do
      conn
    else
      conn
      |> AutoDealApiWeb.Api.V1.FallbackController.call({:error, :unauthorized})
      |> Plug.Conn.halt()
    end
  end

  defp validate_token(token) do
    @expected_hash === token
  end
end
