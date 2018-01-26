<?php

if (!isset($_POST['facebook']) || !isset($_POST['twitter']) || !isset($_POST['telegram']) || !isset($_POST['github'])) {
    die('Failed.');
}

$urlFacebook = $_POST['facebook'];
$urlTwitter = $_POST['twitter'];
$urlInstagram = $_POST['instagram'];


$session = new SessionControl();
//provo ad aggiungere tutti
$facebook = addFacebook($urlFacebook, $session);
$twitter = addTwitter($urlTwitter, $session);
$telegram = addTelegram($urlInstagram, $session);
$github = addGitHub($urlGithub, $session);

//se aggiungo almeno un campo do un esito di successo e inserisco in data.message chi ho aggiunto
if ($facebook || $twitter || $telegram || $github) {
    $type = 'success';
    $message = array('facebook' => $facebook,
        'twitter' => $twitter,
        'telegram' => $telegram,
        'github' => $github);
} //se no esito negativo
else {
    $type = 'error';
    $message = '';
}

$responseArray = array('type' => $type, 'message' => $message);
$encoded = json_encode($responseArray);
header('Content-Type: application/json');
echo $encoded;


//precondizione se l' url è vuota non è valida
/**
 * @param $urlFacebook string url facebook
 * @return bool ritorna true se ' url è vuoto(valido) oppure è un url valido del tipo (htto/s)?(www.)(fb.me/)(mobile.facebook.com/)
 */
function validateFacebook($urlFacebook)
{
    $regexFacebook = '/^((http:\/\/)|(https:\/\/))?(www.)?((facebook.com\/)|(fb.me\/)|(mobile.facebook.com\/)).*/';
    preg_match($regexFacebook, $urlFacebook, $matches);


    if (count($matches) > 0 || $urlFacebook == '') {
        return true;
    }
    return false;
}

/**
 * @param $urlTwitter string uerl twitter
 * @return bool bool ritorna true se ' url è vuoto(valido) oppure è un url valido del tipo (htto/s)?(www.)(twitter.com/)
 */
function validateTwitter($urlTwitter)
{
    $regexFacebook = '/^((http:\/\/)|(https:\/\/))?(www.)?(twitter.com\/).*/';
    preg_match($regexFacebook, $urlTwitter, $matches);

    if (count($matches) > 0 || $urlTwitter == '') {
        return true;
    }
    return false;

}

/**
 * @param $urlTelegram string  username telegram
 * @return bool ritorna true se è un username telegram valido (@....)
 */
function validateTelegram($urlTelegram)
{
    $regexFacebook = '/^(@).*/';
    preg_match($regexFacebook, $urlTelegram, $matches);

    if (count($matches) > 0 || $urlTelegram == '') {
        return true;
    }
    return false;

}

/**
 * @param $urlGitHub string url github
 * @return bool bool bool ritorna true se ' url è vuoto(valido) oppure è un url valido del tipo (htto/s)?(www.)(github.com/)
 */
function validateGitHub($urlGitHub)
{
    $regexFacebook = '/^((http:\/\/)|(https:\/\/))?(www.)?(github.com\/).*/';
    preg_match($regexFacebook, $urlGitHub, $matches);

    if (count($matches) > 0 || $urlGitHub == '') {
        return true;
    }
    return false;

}

/**
 * @param $urlFacebook string url facebook
 * @param SessionControl $session sessione dell user loggata
 * @return bool ritorna true ed modifica l' url facebook nella sessione se è un url valido e se è diverso da quello salvato in precendenza,
 *              false altrimenti
 */
function addFacebook($urlFacebook, SessionControl $session)
{
    if (validateFacebook($urlFacebook) && $session->getAccountFacebook() != $urlFacebook) {

        $queryBuilder = new DatabaseQueryBuilder();
        $query = $queryBuilder
            ->setTable('user')
            ->update(
                'facebook', $urlFacebook, 's'
            )
            ->where(
                'id', '=', $session->getId(), 'i'

            )
            ->build();


// Tell if the query has been successful or not
        if ($query->execute()) {
            $session->changeAccountFacebook($urlFacebook);
            return true;

        }
    }
    return false;
}

/**
 * @param $urlTwitter string url facebook
 * @param SessionControl $session sessione dell user loggata
 * @return bool ritorna true ed modifica l' url twitter nella sessione se è un url valido e se è diverso da quello salvato in precendenza,
 *              false altrimenti
 */
function addTwitter($urlTwitter, SessionControl $session)
{
    if (validateTwitter($urlTwitter) && $session->getAccountTwitter() != $urlTwitter) {

        $queryBuilder = new DatabaseQueryBuilder();
        $query = $queryBuilder
            ->setTable('user')
            ->update(
                'twitter', $urlTwitter, 's'
            )
            ->where(
                'id', '=', $session->getId(), 'i'

            )
            ->build();


// Tell if the query has been successful or not
        if ($query->execute()) {
            $session->changeAccountTwitter($urlTwitter);
            return true;


        }
    }
    return false;
}


/**
 * @param $urlTelegram string url facebook
 * @param SessionControl $session sessione dell user loggata
 * @return bool ritorna true ed modifica l' url telegram nella sessione se è un url valido e se è diverso da quello salvato in precendenza,
 *              false altrimenti
 */
function addTelegram($urlTelegram, SessionControl $session)
{
    if (validateTelegram($urlTelegram) && $session->getAccountTelegram() != $urlTelegram) {
        $queryBuilder = new DatabaseQueryBuilder();
        $query = $queryBuilder
            ->setTable('user')
            ->update(
                'telegram', $urlTelegram, 's'
            )
            ->where(
                'id', '=', $session->getId(), 'i'

            )
            ->build();


// Tell if the query has been successful or not
        if ($query->execute()) {
            $session->changeAccountTelegram($urlTelegram);
            return true;

        }
    }
    return false;
}

/**
 * @param $urlGitHub string url facebook
 * @param SessionControl $session sessione dell user loggata
 * @return bool ritorna true ed modifica l' url github nella sessione se è un url valido e se è diverso da quello salvato in precendenza,
 *              false altrimenti
 */
function addGitHub($urlGitHub, SessionControl $session)
{
    if (validateGitHub($urlGitHub) && $session->getAccountGitHub() != $urlGitHub) {
        $queryBuilder = new DatabaseQueryBuilder();
        $query = $queryBuilder
            ->setTable('user')
            ->update(
                'github', $urlGitHub, 's'
            )
            ->where(
                'id', '=', $session->getId(), 'i'

            )
            ->build();


// Tell if the query has been successful or not
        if ($query->execute()) {
            $session->changeAccountGitHub($urlGitHub);
            return true;

        }
    }
    return false;
}
