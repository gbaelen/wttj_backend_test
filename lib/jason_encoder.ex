alias WttjBackendTest.Job.Offer
alias WttjBackendTest.Job.Profession

defimpl Jason.Encoder, for: [Offer, Profession] do
  def encode(%{__struct__: _} = struct, options) do
    map = struct
      |> Map.from_struct
      |> sanitize_map
    Jason.Encoder.Map.encode(map, options)
  end

  defp sanitize_map(map) do
    # remove some fields
    Map.drop(map, [:__meta__, :__struct__])
  end
end
