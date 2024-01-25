<?php
    class connectServer{
        
        private $servername = 'localhost';
        private $username = 'root';
        private $password = '';
        private $dbname = 'rits_carnaval';

        public function conectar(){
            
            try{
                $conn = new PDO("mysql:host=$this->servername;dbname=$this->dbname", $this->username, $this->password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                return $conn;
            } catch (Exception $e) {
                echo "Error: 404 Found\n";
            }
        }
       

    }
?>