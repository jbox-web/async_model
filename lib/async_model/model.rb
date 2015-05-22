module AsyncModel
  module Model
    extend ActiveSupport::Concern
    include AsyncModel::ModelBehavior
  end
end
