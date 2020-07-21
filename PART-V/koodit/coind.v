(* Kokeillaan muutamia coinduktiivisia tyyppejä Coqilla, kerran
   Haskelissa ei vastaavat tyypit aivan luonnistu.
   Lisäksi on tullut kesän aikana Logical Foundationsia
   (https://softwarefoundations.cis.upenn.edu/lf-current/index.html)
   läpikäytyä, joten ei aivan hukassa olla.. *)

(* Kirjan mukaisesti luonnolisten lukujen stream.
   Coq erottelee induktiiviset ja coinduktiiviset tyypit selkeästi jo
   määrittelyjen nimissä. *)

CoInductive nstream :=
  | cons : nat -> nstream -> nstream.

(* Muutama yksinkertainen funktio streameilla testailua varten. *)

Definition hd (ns : nstream) : nat :=
  match ns with
  | cons n ns => n
  end.

Definition tail (ns : nstream) : nstream :=
  match ns with
  | cons n ns => ns
  end.

(* Jatkuva stream 0,0,0,.. *)
CoFixpoint zero : nstream := cons 0 zero.

(* Jatkuva stream 1,2,3,1,2,.. *)
CoFixpoint onetwothree : nstream := cons 1 (cons 2 (cons 3 onetwothree)).

(* Vielä muutamata todistus, että ollaan tehty jotain jokseenkin järkevää.. *)

Example zerohd: hd zero = 0.
Proof. reflexivity. Qed.
Example zeroagainhd: hd (tail zero) = 0.
Proof. reflexivity. Qed.
Example one: hd onetwothree = 1.
Proof. reflexivity. Qed.
Example two: hd (tail onetwothree) = 2.
Proof. reflexivity. Qed.
Example three: hd (tail (tail onetwothree)) = 3.
Proof. simpl. reflexivity. Qed.
Example oneagain: hd (tail (tail (tail onetwothree))) = 1.
Proof. simpl. reflexivity. Qed.
