defmodule Decocare.History.Prime do
  use Bitwise
  alias Decocare.DateDecoder

  def decode_prime(<<_::8, raw_programmed_amount::8, _::8, raw_amount::8, timestamp::binary-size(5)>>) do
    programmed_amount = (raw_programmed_amount <<< 2) / 40
    %{
      programmed_amount: programmed_amount,
      amount: (raw_amount <<< 2) / 40,
      prime_type: prime_type(programmed_amount),
      timestamp: DateDecoder.decode_history_timestamp(timestamp),
    }
  end

  defp prime_type(0.0), do: :manual
  defp prime_type(_), do: :fixed
end
