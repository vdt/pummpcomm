defmodule Decocare.History.NewTime do
  alias Decocare.DateDecoder

  def decode_new_time(<<_::8, timestamp::binary-size(5)>>) do
    %{
      timestamp: DateDecoder.decode_history_timestamp(timestamp),
    }
  end
end