defmodule Decocare.History.ChangeAlarmNotifyMode do
  alias Decocare.DateDecoder

  def decode_change_alarm_notify_mode(<<_::8, timestamp::binary-size(5)>>) do
    %{
      timestamp: DateDecoder.decode_history_timestamp(timestamp)
    }
  end
end