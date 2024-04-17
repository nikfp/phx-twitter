defmodule ChirpWeb.PostLive.PostComponent do
  use ChirpWeb, :live_component

  def render(assigns) do
    ~H"""
    <div id="post-{@id}" class="post">
      <div class="row">
        <div class="column column-10">
          <div class="post-avatar"></div>
        </div>
        <div class="column column-90 post-body">
          <b>
            <%= @post.username %>
          </b>
          <br />
          <%= @post.body %>
        </div>
      </div>

      <div class="row">
        <div class="column">
          <i class="far fa-hart">likes: </i> <%= @post.likes_count %>
        </div>
        <div class="column">
          <i class="far fa-hart">reposts: </i> <%= @post.reposts_count %>
        </div>
        <div class="column"></div>
      </div>
    </div>
    """
  end
end
