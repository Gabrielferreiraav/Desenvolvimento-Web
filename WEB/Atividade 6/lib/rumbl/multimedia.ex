defmodule Rumbl.Multimedia do
  @moduledoc """
  The Multimedia context.
  """

  alias Rumbl.Multimedia.Video

  def list_videos do
    [
      %Video{id: "1", title: "Introdução ao Elixir", url: "https://youtu.be/1"},
      %Video{id: "2", title: "Phoenix Framework na Prática", url: "https://youtu.be/2"},
      %Video{id: "3", title: "LiveView em Ação", url: "https://youtu.be/3"}
    ]
  end

  def get_video(id) do
    Enum.find(list_videos(), fn video -> video.id == id end)
  end

  def get_video_by(params) do
    Enum.find(list_videos(), fn video ->
      Enum.all?(params, fn {key, val} -> Map.get(video, key) == val end)
    end)
  end
end
