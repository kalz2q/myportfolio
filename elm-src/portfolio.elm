module Portfolio exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        -- HOME
        -- ABOUT
        [ img [ src "header.png", width 400, height 130, alt "ヘッダー画像" ] []
        , img [ src "humanblack.png", width 140, alt "太郎", class "icon" ] []
        , h1 [] [ text "山田太郎" ]
        , p [] [ text "ui/uxデザイナー見習いです" ]
        , img [ src "shumei.png", width 140, alt "太郎", alt "州名ゲーム" ] []
        , h2 [] [ text "州名ゲーム" ]
        , p [] [text "楽しいアプリです"]
        ]
