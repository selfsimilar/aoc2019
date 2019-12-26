defmodule AocCommon do

  def readPuzzleInputFile(data) do
    String.trim(File.read!(data))
  end

  def createIntInstructionList(instructionString) do
    Enum.map(String.split(instructionString, ","), fn x -> String.to_integer(x) end)
  end

end