<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Coaching Tunisie</title>
    <script src="dist/all.js"></script>
    <style type="text/css">.cufon-canvas {
        text-indent: 0
    }

    @media screen, projection {
        .cufon-canvas {
            display: inline;
            display: inline-block;
            position: relative;
            vertical-align: middle;
            font-size: 1px;
            line-height: 1px
        }

        .cufon-canvas .cufon-alt {
            display: -moz-inline-box;
            display: inline-block;
            width: 0;
            height: 0;
            overflow: hidden
        }

        .cufon-canvas canvas {
            position: relative
        }
    }

    @media print {
        .cufon-canvas {
            padding: 0 !important
        }

        .cufon-canvas canvas {
            display: none
        }

        .cufon-canvas .cufon-alt {
            display: inline
        }
    }</style>
    <script src="lib/fonts/Delicious_500.font.js"></script>


    <style>
        .canvas-container {
            border: 1px solid #ccc;
            display: inline-block;
            vertical-align: top;
        }

        h2 span {
            font-weight: normal;
        }

        pre {
            background: #eef;
            display: inline-block;
            padding-right: 15px;
            margin-left: 15px
        }
    </style>
    <link rel="stylesheet" href="lib/master.css" type="text/css">
    <link rel="stylesheet" href="demo.css" type="text/css">
</head>
<body onselectstart="return false" oncontextmenu="return false">
<ul id="header">
    <li><a href="index.html">Terrain1</a></li>
    <li><a href="terrain2.html">Terrain2</a></li>
    <li><a href="terrain3.html">Terrain3</a></li>
</ul>

<div id="bd-wrapper">
    <h2 style="margin-top:10px; margin-bottom:5px;"><span>Coach :</span> AbdelAziz Abid</h2>
    <div id="controls">

        <label for="opacity">Opacity: </label><input type="range" id="opacity"><label for="color"
                                                                                      style="margin-left: 10px;">Color: </label><input
            type="color" id="color" style="width: 40px;"></div>
    <div style="position:relative;width:550px;float:left;">
        <div id="fps" style="display:none;">&nbsp;</div>
        <div class="canvas-container"
             style="width: 546px; height: 350px; position: relative; -webkit-user-select: none;">
            <canvas class="lower-canvas" width="546" height="350"
                    style="position: absolute; width: 546px; height: 350px; left: 0px; top: 0px; -webkit-user-select: none;"></canvas>
            <canvas id="canvas" width="546" height="350" class="upper-canvas"
                    style="position: absolute; width: 546px; height: 350px; left: 0px; top: 0px; -webkit-user-select: none; cursor: default;"></canvas>
        </div>

        <div id="text-controls">

            <div id="complexity">Modifier le texte:<strong></strong></div>
            <textarea id="text"></textarea>
            <div id="text-control-buttons" style="display:none;">
                <button type="button" id="text-cmd-italic" disabled="">Italic</button>
                <button type="button" id="text-cmd-underline" disabled="">Underline</button>
                <button type="button" id="text-cmd-linethrough" disabled="">Linethrough</button>
                <button type="button" id="text-cmd-overline" disabled="">Overline</button>
                <button type="button" id="text-cmd-shadow" disabled="">Shadow</button>
                <label for="text-align" style="display:inline-block">Text align:</label>
                <select id="text-align" disabled="">
                    <option>Left</option>
                    <option>Center</option>
                    <option>Right</option>
                </select>
                <label>Bg color: <input type="color" value="" id="text-bg-color" size="10"></label>
                <label>Line height: <input type="range" min="-2" max="10" step="0.1" title="Line height"></label></div>
        </div>
    </div>

    <div id="commands">
        <ul>
            <li style="margin-top:10px">

                <input type="image" src="img/terrains/terrain1.png" class="terrain1" width="50" height="50">
                <input type="image" src="img/terrains/terrain1_1.png" class="terrain1_1" width="50" height="50">
                <input type="image" src="img/players/coach_n.png" class="coach_n" width="50" height="50">
                <input type="image" src="img/players/coach2.png" class="coach2" width="50" height="50">
                <input type="image" src="img/players/pos1_noir.png" class="pos1_noir" width="50" height="50">
                <button id="add-text">Texte</button>
            </li>
        </ul>
        <ul>
            <li>
                <input type="image" src="img/formes/rectangle.png" class="rect" width="25" height="25">
                <input type="image" src="img/formes/cercle.png" class="circle" width="25" height="25">
                <input type="image" src="img/formes/triangle.png" class="triangle" width="25" height="25">
                <input type="image" src="img/actions/export.png" id="rasterize" width="40" height="40">
                <input type="image" src="img/actions/effacer.png" id="remove-selected" width="40" height="40">
                <input type="image" src="img/actions/effacer_tout.png" class="clear" width="40" height="40">


            </li>
        </ul>


        <ul>
            <li style="margin-top:10px">
                <!-- rouge -->
                <input type="image" src="img/players/pos1_rouge.png" class="pos1_rouge" width="40" height="40">
                <input type="image" src="img/players/pos2_rouge.png" class="pos2_rouge" width="40" height="40">
                <input type="image" src="img/players/pos3_rouge.png" class="pos3_rouge" width="40" height="40">

                <input type="image" src="img/players/pos7_rouge.png" class="pos7_rouge" width="40" height="40">
                <input type="image" src="img/players/pos4_rouge.png" class="pos4_rouge" width="40" height="40">
                <input type="image" src="img/players/pos5_rouge.png" class="pos5_rouge" width="40" height="40">
                <input type="image" src="img/players/pos9_rouge.png" class="pos9_rouge" width="40" height="40">
                <input type="image" src="img/players/pos6_rouge.png" class="pos6_rouge" width="40" height="40">
                <input type="image" src="img/players/pos10_rouge.png" class="pos10_rouge" width="40" height="40">
                <input type="image" src="img/players/pos4_rouge_corde.png" class="pos4_rouge_corde" width="40"
                       height="40">
                <input type="image" src="img/players/pos13_rouge.png" class="pos13_rouge" width="40" height="40">
                <input type="image" src="img/players/pos14_rouge.png" class="pos14_rouge" width="40" height="40">
                <input type="image" src="img/players/pos15_rouge.png" class="pos15_rouge" width="40" height="40">


                <br>
                <!-- bleu -->
                <input type="image" src="img/players/pos1_bleu.png" class="pos1_bleu" width="40" height="40">
                <input type="image" src="img/players/pos2_bleu.png" class="pos2_bleu" width="40" height="40">
                <input type="image" src="img/players/pos3_bleu.png" class="pos3_bleu" width="40" height="40">

                <input type="image" src="img/players/pos7_bleu.png" class="pos7_bleu" width="40" height="40">
                <input type="image" src="img/players/pos4_bleu.png" class="pos4_bleu" width="40" height="40">
                <input type="image" src="img/players/pos5_bleu.png" class="pos5_bleu" width="40" height="40">
                <input type="image" src="img/players/pos9_bleu.png" class="pos9_bleu" width="40" height="40">
                <input type="image" src="img/players/pos6_bleu.png" class="pos6_bleu" width="40" height="40">
                <input type="image" src="img/players/pos10_bleu.png" class="pos10_bleu" width="40" height="40">
                <input type="image" src="img/players/pos4_bleu_corde.png" class="pos4_bleu_corde" width="40"
                       height="40">
                <input type="image" src="img/players/pos13_bleu.png" class="pos13_bleu" width="40" height="40">
                <input type="image" src="img/players/pos14_bleu.png" class="pos14_bleu" width="40" height="40">
                <input type="image" src="img/players/pos15_bleu.png" class="pos15_bleu" width="40" height="40">
                <br>

                <!-- orange -->
                <input type="image" src="img/players/pos1_orange.png" class="pos1_orange" width="40" height="40">
                <input type="image" src="img/players/pos2_orange.png" class="pos2_orange" width="40" height="40">
                <input type="image" src="img/players/pos3_orange.png" class="pos3_orange" width="40" height="40">

                <input type="image" src="img/players/pos7_orange.png" class="pos7_orange" width="40" height="40">
                <input type="image" src="img/players/pos4_orange.png" class="pos4_orange" width="40" height="40">
                <input type="image" src="img/players/pos5_orange.png" class="pos5_orange" width="40" height="40">
                <input type="image" src="img/players/pos9_orange.png" class="pos9_orange" width="40" height="40">
                <input type="image" src="img/players/pos6_orange.png" class="pos6_orange" width="40" height="40">
                <input type="image" src="img/players/pos10_orange.png" class="pos10_orange" width="40" height="40">
                <input type="image" src="img/players/pos4_orange_corde.png" class="pos4_orange_corde" width="40"
                       height="40">
                <input type="image" src="img/players/pos13_orange.png" class="pos13_orange" width="40" height="40">
                <input type="image" src="img/players/pos14_orange.png" class="pos14_orange" width="40" height="40">
                <input type="image" src="img/players/pos15_orange.png" class="pos15_orange" width="40" height="40">

                <br>
                <!-- vert -->
                <input type="image" src="img/players/pos1_vert.png" class="pos1_vert" width="40" height="40">
                <input type="image" src="img/players/pos2_vert.png" class="pos2_vert" width="40" height="40">
                <input type="image" src="img/players/pos3_vert.png" class="pos3_vert" width="40" height="40">

                <input type="image" src="img/players/pos7_vert.png" class="pos7_vert" width="40" height="40">
                <input type="image" src="img/players/pos4_vert.png" class="pos4_vert" width="40" height="40">
                <input type="image" src="img/players/pos5_vert.png" class="pos5_vert" width="40" height="40">
                <input type="image" src="img/players/pos9_vert.png" class="pos9_vert" width="40" height="40">
                <input type="image" src="img/players/pos6_vert.png" class="pos6_vert" width="40" height="40">
                <input type="image" src="img/players/pos10_vert.png" class="pos10_vert" width="40" height="40">
                <input type="image" src="img/players/pos4_vert_corde.png" class="pos4_vert_corde" width="40"
                       height="40">
                <input type="image" src="img/players/pos13_vert.png" class="pos13_vert" width="40" height="40">
                <input type="image" src="img/players/pos14_vert.png" class="pos14_vert" width="40" height="40">
                <input type="image" src="img/players/pos15_vert.png" class="pos15_vert" width="40" height="40">
                <br>
                <!-- violet -->
                <input type="image" src="img/players/pos1_violet.png" class="pos1_violet" width="40" height="40">
                <input type="image" src="img/players/pos2_violet.png" class="pos2_violet" width="40" height="40">
                <input type="image" src="img/players/pos3_violet.png" class="pos3_violet" width="40" height="40">

                <input type="image" src="img/players/pos7_violet.png" class="pos7_violet" width="40" height="40">
                <input type="image" src="img/players/pos4_violet.png" class="pos4_violet" width="40" height="40">
                <input type="image" src="img/players/pos5_violet.png" class="pos5_violet" width="40" height="40">
                <input type="image" src="img/players/pos9_violet.png" class="pos9_violet" width="40" height="40">
                <input type="image" src="img/players/pos6_violet.png" class="pos6_violet" width="40" height="40">
                <input type="image" src="img/players/pos10_violet.png" class="pos10_violet" width="40" height="40">
                <input type="image" src="img/players/pos4_violet_corde.png" class="pos4_violet_corde" width="40"
                       height="40">
                <input type="image" src="img/players/pos13_violet.png" class="pos13_violet" width="40" height="40">
                <input type="image" src="img/players/pos14_violet.png" class="pos14_violet" width="40" height="40">
                <input type="image" src="img/players/pos15_violet.png" class="pos15_violet" width="40" height="40">
                <br>
                <input type="image" src="img/ballons/ballon.png" class="ballon" width="14" height="14">
                <input type="image" src="img/ballons/groupe_ballons.png" class="groupe_ballons" width="40" height="40">

                <input type="image" src="img/piquets/piquet_r.png" class="piquet_r" width="40" height="40">
                <input type="image" src="img/piquets/piquet_b.png" class="piquet_b" width="40" height="40">


                <input type="image" src="img/plots/plot_rouge.png" class="plot_rouge" width="40" height="40">
                <input type="image" src="img/plots/plot_bleu.png" class="plot_bleu" width="40" height="40">
                <input type="image" src="img/coupelles/coupelle_b.png" class="coupelle_b" width="40" height="40">
                <input type="image" src="img/coupelles/coupelle_j.png" class="coupelle_j" width="40" height="40">
                <input type="image" src="img/coupelles/coupelle_r.png" class="coupelle_r" width="40" height="40">

                <input type="image" src="img/piquets/piquet1.png" class="piquet1" width="40" height="40">

                <input type="image" src="img/piquets/piquet2.png" class="piquet2" width="40" height="40">

                <br>

                <!--  <input type="image" src="img/fleches/fleche1.png" class="fleche1" width="40" height="10" ></input> -->

                <input type="image" src="img/fleches/fleche2.png" class="fleche2" width="30" height="10">

                <input type="image" src="img/fleches/fleche2_r.png" class="fleche2_r" width="30" height="10">

                <input type="image" src="img/fleches/fleche2_bl.png" class="fleche2_bl" style="border:1px solid #999;"
                       width="30" height="10">

                <input type="image" src="img/fleches/point1.png" class="point1" width="40" height="20">

                <input type="image" src="img/fleches/point1_r.png" class="point1_r" width="40" height="20">

                <input type="image" src="img/fleches/point1_bl.png" class="point1_bl" style="border:1px solid #999;"
                       width="40" height="20">


                <input type="image" src="img/fleches/zig1.png" class="zig1" width="40" height="40">
                <input type="image" src="img/fleches/zig1_r.png" class="zig1_r" width="40" height="40">
                <input type="image" src="img/fleches/zig1_bl.png" class="zig1_bl" style="border:1px solid #999;"
                       width="40" height="40">
                <input type="image" src="img/fleches/zig_point1.png" class="zig_point1" width="40" height="40">

                <!-- <input type="image" src="img/fleches/zig2.png" class="zig2" width="40" height="40" ></input>  -->


                <br>
                <input type="image" src="img/barres/barre_rouge.png" class="barre_rouge" width="40" height="25">
                <input type="image" src="img/barres/barre_jaune.png" class="barre_jaune" width="40" height="25">

                <input type="image" src="img/barres/barre_bleu.png" class="barre_bleu" width="40" height="25">
                <input type="image" src="img/barres/barre_noir.png" class="barre_noir" width="40" height="25">

                <input type="image" src="img/haies/haie2_r.png" class="haie2_r" width="40" height="40">
                <input type="image" src="img/haies/haie2_b.png" class="haie2_b" width="40" height="40">
                <!-- <input type="image" src="img/haies/haie1.png" class="haie1" width="40" height="40" ></input>-->
                <input type="image" src="img/cerceaux/cerceau_r.png" class="cerceau_r" width="40" height="40">
                <input type="image" src="img/cerceaux/cerceau_b.png" class="cerceau_b" width="40" height="40">
                <input type="image" src="img/cerceaux/cerceau_bl.png" class="cerceau_bl" style="border:1px solid #999;"
                       width="40" height="40">
                <input type="image" src="img/cerceaux/cerceau_j.png" class="cerceau_j" width="40" height="40">

                <br>

                <input type="image" src="img/cages/cage_bl_1_btn.png" class="cage_bl_1" width="25" height="25">
                <input type="image" src="img/cages/cage_bl_2_btn.png" class="cage_bl_2" width="25" height="25">
                <input type="image" src="img/cages/cage_bl_3_btn.png" class="cage_bl_3" width="25" height="25">
                <input type="image" src="img/cages/cage_bl_4_btn.png" class="cage_bl_4" width="25" height="25"> <input
                    type="image" src="img/echelles/echelle.png" class="echelle" width="25" height="25">

                <input type="image" src="img/fleches/retour_r.png" class="retour_r" width="25" height="25">
                <input type="image" src="img/fleches/retour_b.png" class="retour_b" width="25" height="25">
                <input type="image" src="img/fleches/retour_point_r.png" class="retour_point_r" width="25" height="25">
                <input type="image" src="img/fleches/retour_point_b.png" class="retour_point_b" width="25" height="25">

                <input type="image" src="img/fleches/retour_r_rtl.png" class="retour_r_rtl" width="25" height="25">
                <input type="image" src="img/fleches/retour_b_rtl.png" class="retour_b_rtl" width="25" height="25">
                <input type="image" src="img/fleches/retour_point_r_rtl.png" class="retour_point_r_rtl" width="25"
                       height="25">
                <input type="image" src="img/fleches/retour_point_b_rtl.png" class="retour_point_b_rtl" width="25"
                       height="25">


            </li>
        </ul>


        <ul class="object-controls" style="display:none;">
            <li>
                <button id="rasterize">Rasterize canvas to image</button>
                <button class="clear">Clear canvas</button>
                <button id="add-text">Add text</button>
            </li>

            <li style="margin-top:10px;">
                <button id="remove-selected">Remove selected object/group</button>
            </li>

            <li style="margin-top:10px;">
                <button id="lock-horizontally">Lock horizontal movement</button>
                <button id="lock-vertically">Lock vertical movement</button>
                <button id="lock-scaling-x">Lock horizontal scaling</button>
                <button id="lock-scaling-y">Lock vertical scaling</button>
                <button id="lock-rotation">Lock rotation</button>
            </li>

            <li style="margin-top:10px;">
                <button id="gradientify">Gradientify</button>
            </li>

            <li style="margin-top:10px;">
                <button id="drawing-mode">Enter drawing mode</button>
                <div style="display:none;" id="drawing-mode-options">
                    Width:
                    <input value="10" id="drawing-line-width" size="2">
                    Color:
                    <input type="color" value="rgb(0,0,0)" id="drawing-color" size="15">
                </div>
            </li>

            <li style="margin-top:10px">

                <label for="svg-console">Load SVG:</label>

<textarea rows="15" cols="55" id="svg-console">&lt;?xml version="1.0" standalone="no"?&gt;
&lt;!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
  "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"&gt;

&lt;svg width="100%" height="100%" version="1.1"
xmlns="http://www.w3.org/2000/svg"&gt;

&lt;rect width="300" height="100"
style="fill:rgb(0,0,255);stroke-width:1;stroke:rgb(0,0,0)"/&gt;
&lt;/svg&gt;
</textarea>
                <button type="button" id="load-svg">Load</button>
            </li>

            <li style="margin-top:10px;">
                <label for="canvas-console">Execute code:</label>
  <textarea rows="15" cols="55" id="canvas-console">
// clear canvas
canvas.clear();

// remove currently selected object
canvas.remove(canvas.getActiveObject());

// add red rectangle
canvas.add(new fabric.Rect({ 
  width: 50, 
  height: 50, 
  left: 50, 
  top: 50, 
  fill: 'rgb(255,0,0)' 
}));

// add green, half-transparent circle
canvas.add(new fabric.Circle({ 
  radius: 40, 
  left: 50, 
  top: 50, 
  fill: 'rgb(0,255,0)', 
  opacity: 0.5
}));
  
  </textarea>
                <button type="button" id="execute">Execute</button>
            </li>
        </ul>
    </div>
</div>
<script src="lib/centering_guidelines.js" type="text/javascript"></script>
<script src="lib/aligning_guidelines.js" type="text/javascript"></script>
<script src="lib/font_definitions.js"></script>

<script src="demo.js" type="text/javascript"></script>

</body>
</html>