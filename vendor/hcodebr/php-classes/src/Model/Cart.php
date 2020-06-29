<?php
namespace Hcode\Model;

use \Hcode\DB\Sql;
use \Hcode\Model;
use \Hcode\Mailer;
use \Hcode\Model\User;

class Cart extends Model 
{

    const SESSION = "Cart";

    public static function getFromSession()
    {
        if(isset($_SESSION[Cart::SESSION]) && (int)$_SESSION[Cart::SESSION]['idcart'] > 0 ) 
        {
            $cart->get((int)$_SESSION[Cart::SESSION]['idcart']);
            
        }
    }


    public function save()
	{

		$sql = new Sql();

		$results = $sql->select("CALL sp_carts_save(:idcart, :dessessionid, :iduser, :deszipcode, :vlfreight, :nrdays)", [
			':idcart'=>$this->getidcart(),
			':dessessionid'=>$this->getdessessionid(),
			':iduser'=>$this->getiduser(),
			':deszipcode'=>$this->getdeszipcode(),
			':vlfreight'=>$this->getvlfreight(),
			':nrdays'=>$this->getnrdays()
		]);

		$this->setData($results[0]);

	}


}

 ?>