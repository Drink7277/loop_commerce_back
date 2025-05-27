class Avo::Resources::Product < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  self.grid_view = {
    card: -> do
      {
        cover_url:
          if record.image.present?
            main_app.url_for(record.image)
          end,
        title: record.name,
        body: record.description
      }
    end
  }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :price, as: :number
    field :original_price, as: :number
    field :image, as: :text
    field :category, as: :text
    field :description, as: :textarea
    field :rating, as: :number
    field :reviews, as: :number
    field :in_stock, as: :boolean
    field :features, as: :code
  end
end
