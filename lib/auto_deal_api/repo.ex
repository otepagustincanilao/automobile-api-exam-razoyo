defmodule AutoDealApi.Repo do
  use Ecto.Repo,
    otp_app: :auto_deal_api,
    adapter: Ecto.Adapters.Postgres
end
