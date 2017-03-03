defmodule Decocare.History.SelfTest do
  alias Decocare.DateDecoder

  def decode_self_test(<<_::8, timestamp::binary-size(5)>>) do
    %{
      timestamp: DateDecoder.decode_history_timestamp(timestamp)
    }
  end
end
