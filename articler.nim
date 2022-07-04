import strformat, strutils

func href(text, href : string) : string = "<a href=\"" & href & "\"" & text & "</a>"

func top(img, desc : string) : string = return """<!DOCTYPE html>
<html style="font-family: 'Roboto', sans-serif;">
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;1,300&display=swap" rel="stylesheet">
        <base target="_blank">
    </head>
    <header style="background-color: #111111; color : #EEEEEE; font-family: Quicksand, sans-serif;">
        <div style="display: flex; justify-content: center; padding-top: 1%;">
            <a href="index.html" target="_self"><h1>Tuatarian.app</h1></a>
        </div>
        <div style="display: flex; justify-content: center; align-items: center; margin: 0% 32%;">
            <p style="text-align: center; flex: 1;"><a style="text-decoration: underline" href="https://tuatarian.itch.io">Itch</a></p>
            <p style="text-align: center; flex: 1;"><a style="text-decoration: underline" href="#">Articles</a></p>
            <p style="text-align: center; flex: 1;"><a style="text-decoration: underline" href="#">About</a></p>
            <p style="text-align: center; flex: 1;"><a style="text-decoration: underline" href="#">Links</a></p>
        </div>
    </header>   
    <body style="background-color: #111111; color: #EEEEEE; font-weight: 300; padding-bottom: 20px;">
        <div style="padding: 0rem 12rem;">
            <div style="padding: 0rem 3rem; padding-bottom: 30px; background-color: #222222;">
                <h2 style="text-align: center; padding-top: 2%; font-size: 2.3rem; font-family: Quicksand, sans-serif;">Jose Gaspar Rodriguez de Francia (or a Creative Tribute to National Hispanic Heritage Month)</h2>
                <div style="padding: 2rem 18rem;">
                    <img style="height: 100%; width: 100%; object-fit: cover" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Jos%C3%A9_Rodr%C3%ADguez_de_Francia.jpg/561px-Jos%C3%A9_Rodr%C3%ADguez_de_Francia.jpg"/>
                    <p style="text-align: center; font-size: 100%; font-family: Quicksand, sans-serif;">A portrait of eccentric Paraguayan dictator Jose Gaspar Rodriguez de Francia. <a href="https://commons.wikimedia.org/wiki/File:Jos%C3%A9_Rodr%C3%ADguez_de_Francia.jpg"><i>Wikimedia Commons</i></a></p>
                </div>
                <div style="padding: 0rem 3rem; line-height: 1.6;">"""

let body : seq[string] + @[
    ""
]