<?php 
    require_once("connect.php");
  ?>    
  <html>
    <head>
   
        <title> acceill </title>
      
        
        <style>
            .n1{
                float: left;
            }
            #img1{
                width: 70px;
                height: 70px;
            }
            .n2{
                color: rebeccapurple;
                margin-left: 100px;
            }
            h3{
                color: brown;
            }
            ul li{
                float:left;
                margin: 20px;
                
            }
            .l{
                color: white;
                background-color:blueviolet;
                height: 50px;
                text-align: center;
            }
            ul li a{
                text-decoration: none;
                color: white;
            }
            ul{
                margin-left: 200px;
                list-style: none;
                font-size: 20px;
            }
            .list ul li:hover{
                opacity: 0.6;
                color: red;
                background-color: aqua;
                width:200px;
                
            
            }
            .p1{
                width: 100%;
                height: 70px;
                color: navy;
                background-color:blueviolet;
            }
            .b1{
                 background-color:silver;
                height: 700px;
            }
        </style>
    </head>
    <body>
        <br>
        <div class="container">
            <div class="row">
                <div class="n1"><img src="material_projet/img/logo.jpg" id="img1"></div>
                <div class="n2"><h1>EUROBuvettes </h1>
                <h3>Le Site de Gestien de Buvette de l'EURO 2016 !!</h3></div>
            
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="l">
                  <ul>
                      <li><a href="">Nouveautés</a></li>
                      <li><a href="statistiques.php">Statistique</a></li>
                      <li><a href="recherchemembres.php">Recherche membrres</a></li>
                      <li><a href="affectations.php">Affectations</a></li>
                      <li><a href="insertion.php">Administrateur</a></li>
                    </ul>
                </div>
             
                  
                             
                    <section name="container" class="container">
                        <?php
                        $req="SELECT m.idM `mid`, m.date, m.scoreA, m.scoreB ` scoreB`, a.pays as paysA, a.drapeau as
                         drapeauA, b.pays as paysB, b.drapeau as drapeauB , COUNT(*) nb_bo FROM `match` m, `equipe` a,
                          `equipe` b , `est_ouverte` eo where m.eqA=a.idE AND m.eqB=b.idE AND m.idM=eo.idM 
                          GROUP BY m.idM
                        "
                        ;
                        $result=mysqli_query( $idConnexion, $req);
                       ?>

                <table border="1" width="80%" align="center">
                        <tbody> 
                            <th>Date du match</th>
                            <th>Equipe A</th>
                            <th>Equipe B</th>
                            <th>Score</th>
                            <th> Buvette ouvertttes</th>
                            <th>Nombre de volontaires</th>
                          
                
                        </tbody>
                <?php
                while($row=mysqli_fetch_array($result)){
                    $requete_nbv="SELECT count(*)
                    FROM `match` m, `est_present` ep
                    WHERE m.idM=ep.idM
                    AND m.idM=".$row['mid'];
                    $res=mysqli_query($idConnexion, $requete_nbv);
                    $nbv=mysqli_fetch_array($res);


                    echo "
                    <tr>
                    <td>".
                   $row['date'].
                    " </td>
                    <td><img src=\"".$row['drapeauA']."\" alt=\"".$row['paysA']."\" height=\"50px\"/></td>
                    <td><img src=\"".$row['drapeauB']."\" alt=\"".$row['paysB']."\" height=\"50px\"/></td>
                    <td>".$row['scoreA']." -- " .$row['scoreB']."</td>
                    <td>".$row['nb_bo']."</td>
                    <td>".$nbv[0]."</td>
                    </tr>
                    ";
                }
                ?>
                   </table>
                </section>
                <div class="p1"><br> </div>
                
            
            </div>
        </div>
        
        
      
         <script src="bootstrap.css"></script>
        <script src="bootstrap.js"></script>
    </body>
    </html>