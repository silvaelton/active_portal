require 'faker'

namespace :db do
  namespace :portal do
    task populate: :environment do
      20.times do
        ActiveCodhab::Cms::PostType.create(
          name: Faker::GameOfThrones.house
        )
      end

      20.times do
        ActiveCodhab::Cms::PostCategory.create(
          name: Faker::GameOfThrones.house,
          status: true,
          code: Faker::Name.unique.name
        )
      end

      20.times do
        ActiveCodhab::Cms::NavCategory.create(
          name: Faker::Food.unique.dish,
          status: true,
          code: Faker::Name.unique.name
        )
      end

      20.times do
        ActiveCodhab::Cms::Nav.create(
          name: Faker::StarWars.unique.character,
          label: Faker::StarWars.unique.planet,
          publish: [true, false].sample,
          nav_position: rand(200),
          father_id: [rand(20), nil].sample,
          url: nil,
          category_id: ActiveCodhab::Cms::NavCategory.all.map(&:id).sample,
          image: Faker::Avatar.image
        )
      end

      100.times do
        ActiveCodhab::Cms::Post.create(
          title: Faker::Name.name,
          description: Faker::Lorem.paragraph(2, true),
          content: Faker::Lorem.paragraph(20, true),
          date: Faker::Date.between(1.year.ago, Date.today),
          publish: [true, false].sample,
          draft: [true, false].sample,
          slider: [true, false].sample,
          slider_color: Faker::Color.hex_color,
          thumb: Faker::Avatar.image,
          thumb_alt: Faker::Lorem.paragraph(2, true),
          thumb_author: Faker::GameOfThrones.character,
          thumb_description: Faker::Lorem.paragraph(2, true),
          author: Faker::GameOfThrones.character,
          internal: [true, false].sample,
          external: [true, false].sample,
          category_id: ActiveCodhab::Cms::PostCategory.all.map(&:id).sample,
          staff_id: nil,
          post_type_id: ActiveCodhab::Cms::PostType.all.map(&:id).sample,
          keywords: Faker::Lorem.words(6).join(';').to_s
        )
      end
    end
  end
end
