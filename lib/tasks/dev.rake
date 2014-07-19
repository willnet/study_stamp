# -*- coding: utf-8 -*-
namespace :dev do
  namespace :db do
    desc 'load dev data'
    task seed: :environment do
      if Assignment.count == 0
        rails = Assignment.create!(title: 'Rails', description: 'Railsを勉強したい人向けの課題です')
        design = Assignment.create!(title: 'Design', description: 'デザインを勉強したい人向けの課題です')
        Assignment.create!(title: 'Ruby', description: 'Rubyを勉強したい人向けの課題です')
        Assignment.create!(title: 'JavaScript', description: 'JavaScriptを勉強したい人向けの課題です')
        Assignment.create!(title: 'Unity', description: 'Unityを勉強したい人向けの課題です')
        Assignment.create!(title: 'PHP', description: 'PHPを勉強したい人向けの課題です')
        Assignment.create!(title: 'HTML5', description: 'HTML5を勉強したい人向けの課題です')
        Assignment.create!(title: 'Python', description: 'Pythonを勉強したい人向けの課題です')

        rails.tutorials.create!(title: 'Railsの開発環境を整える', description: '頑張りましょう', number: 1)
        rails.tutorials.create!(title: 'heroku にデプロイしてみる', description: '頑張りましょう', number: 2)
        rails.tutorials.create!(title: 'Railsチュートリアルを読む', description: '頑張りましょう', number: 3)
        rails.tutorials.create!(title: 'パーフェクト Ruby on Rails を読む', description: '頑張りましょう', number: 4)
        rails.tutorials.create!(title: 'ginza.rb に参加する', description: '頑張りましょう', number: 5)
        rails.tutorials.create!(title: 'Regional Rubykaigi に参加する', description: '頑張りましょう', number: 6)
        rails.tutorials.create!(title: 'Regional Rubykaigi に登壇する', description: '頑張りましょう', number: 7)
        rails.tutorials.create!(title: 'RubyKaigiにCFPを投げる', description: '頑張りましょう', number: 8)
        rails.tutorials.create!(title: 'RubyKaigiで登壇する', description: '頑張りましょう', number: 9)
        rails.tutorials.create!(title: 'RailsConfにCFPを投げる', description: '頑張りましょう', number: 10)
        rails.tutorials.create!(title: 'RailsConfで登壇する', description: '頑張りましょう', number: 11)
        rails.tutorials.create!(title: 'Railsコミッタになる', description: '頑張りましょう', number: 12)

        design.tutorials.create!(title: 'デザインビギナーズに参加する', description: '頑張りましょう', number: 1)
      end
    end
  end
end
