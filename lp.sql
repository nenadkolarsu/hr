SELECT
     licni_podaci.`id` AS licni_podaci_id,
     licni_podaci.`jmbg` AS licni_podaci_jmbg,
     licni_podaci.`ime` AS licni_podaci_ime,
     licni_podaci.`prezime` AS licni_podaci_prezime,
     licni_podaci.`ime_oca` AS licni_podaci_ime_oca,
     licni_podaci.`ime_majke` AS licni_podaci_ime_majke,
     licni_podaci.`datumrodj` AS licni_podaci_datumrodj,
     licni_podaci.`mestorodj` AS licni_podaci_mestorodj
FROM
     `licni_podaci` licni_podaci