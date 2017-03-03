defmodule Decocare.History.DeleteBolusReminderTimeTest do
  use ExUnit.Case

  # TODO capture in the wild
  test "Delete Bolus Reminder Time" do
    {:ok, history_page} = Base.decode16("6800722713040F0000")
    decoded_events = Decocare.History.decode_page(history_page, %{})
    assert {:delete_bolus_reminder_time, %{timestamp: ~N[2015-04-04 19:39:50], raw: ^history_page}} = Enum.at(decoded_events, 0)
  end
end