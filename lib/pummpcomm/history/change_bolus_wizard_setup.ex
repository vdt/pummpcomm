defmodule Pummpcomm.History.ChangeBolusWizardSetup do
  defdelegate decode(body, pump_options), to: Pummpcomm.History.StandardEvent
end
