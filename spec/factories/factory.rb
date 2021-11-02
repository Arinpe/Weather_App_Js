require 'faker'

FactoryBot.define do
    factory :program do
        configuration { { auto_resolve: false, auto_define: true } }
    end

    factory :car do
        year { 2021 }
        make { 'Toyota' }
        price { 20000000 }
        img_url { 'image_url' }
        horsepower { 800 }
        model { 'RX500' }
        description { 'This is a yeye description' }
    end

end