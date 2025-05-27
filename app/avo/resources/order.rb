class Avo::Resources::Order < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id

    field :details, as: :code, language: 'javascript' do
      JSON.pretty_generate(record.details.as_json)
    end

    field :total, as: :number
    field :user_id, as: :number
    field :user, as: :belongs_to
  end
end
