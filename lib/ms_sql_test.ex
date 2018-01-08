defmodule MsSqlTest do


  import Ecto.Query
  alias MsSqlTest.DemoCategory
  alias MsSqlTest.Repo
  @moduledoc """
  Documentation for MsSqlTest.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MsSqlTest.hello
      :world

  """
  def hello do
    :world
  end



  def keyword_query do
    # query = from w in Demo,
    #      where: w.prcp > 0 or is_nil(w.prcp),
    #      select: w
    # Repo.all(query)
    Repo.all(DemoCategory)

  end
end
