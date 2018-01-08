defmodule MsSqlTest.DemoCategory do
  use Ecto.Schema

  schema "DemoCategory" do
    field :name, :string     # Defaults to type :string
    field :category_no, :integer
    field :description, :text
  end
end

defmodule MsSqlTest.App do
  import Ecto.Query
  alias MsSqlTest.DemoCategory
  alias MsSqlTest.Repo

  def keyword_query do
    query = from w in Weather,
         where: w.prcp > 0 or is_nil(w.prcp),
         select: w
    Repo.all(query)
  end

  # def pipe_query do
  #   Weather
  #   |> where(city: "Kraków")
  #   |> order_by(:temp_lo)
  #   |> limit(10)
  #   |> Repo.all
  # end
end
