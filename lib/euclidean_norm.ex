defmodule EuclideanNorm do
  def euclidean_norm(a, b \\ 0) do
    a = parse(a)
    b = parse(b)

    :math.sqrt(a * a + b * b)
  end

  defp parse(v) when is_integer(v), do: v
  defp parse(v) when is_binary(v) do
    [num] = Regex.run(~r/[0-9]+/, v) || [0]
    String.to_integer(num)
  end
  defp parse(_v), do: 0
end
