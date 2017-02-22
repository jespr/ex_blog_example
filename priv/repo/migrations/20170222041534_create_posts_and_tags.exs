defmodule BlogExample.Repo.Migrations.CreatePostsAndTags do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      timestamps()
    end

    create table(:tags) do
      add :name, :string
    end

    create unique_index(:tags, [:name])

    create table(:posts_tags, primary_key: false) do
      add :post_id, references(:posts)
      add :tag_id, references(:tags)
    end
  end
end
