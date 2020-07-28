(*
Coqin pohjalla tyyppiteoriana toimii Thierry Coquandin Calculus of Constructions.
Se on konstruktiivinen ja laajentaa propositiot tyyppinä periaatetta kattamaan myös
kvanttorit (forall ja exists), kuten prepositiologiikka laajentaa propositiologiikkaa.
Tämä laajennos tekee kielestä myös riippuvasti tyypitetyn ja mahdollistaa ohjelmien
ominaisuuksien todistamisen.
*)

(* Osoitetaan, että konstruktiivinen logiikka ei kiistä law of excluded middlea. *)

Theorem lem_irrefutable: forall A:Prop, ~~( A \/ ~A ).
Proof.
  (* A on prop *) 
  intros A.
  (* Negaatioiden eliminointi. *) 
  unfold not.
  (* H : A \/ (A -> False) -> False) -> False *) 
  intros H.
  (* Käytetään H goaliin, jolloin tulee osoittaa: A \/ (A -> False) *)
  apply H.
  (* A -> False *)
  right. 
  (* HA: A *)
  intros HA.
  (* Käytetään taas H, jolloin: A \/ (A -> False) *)
  apply H.
  (* A *)
  left.
  (* Käytetään HA, jolloin väite osoitettu. *)
  apply HA.
Qed.
