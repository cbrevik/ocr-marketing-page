OcrMarketingPage::Application.routes.draw do
  post 'visitor', to: 'home#signup'
  root to: 'home#index'
end
