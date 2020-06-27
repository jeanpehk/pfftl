(* Määritellään luonnolliset luvut kirjaa vastaavasti:

  --------
  zero nat

  a nat
  -----------
  succ(a) nat

  Samalla selvenee myös aiemmin erikoisena pitämäni 'Inductive'-sanan
  käyttö tietotyypin luonnissa.
*)

Inductive nat : Type :=
  | zero
  | succ (a : nat).

(* Muutama johtaminen luonnollisista luvuista kirjan tyylin  *)

Check zero.                    (* : nat *)
Check succ zero.               (* : nat *)
Check succ (succ (succ zero)). (* : nat *)

