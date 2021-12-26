open Base


let response_for name =
  let name' = String.strip name in
    if String.is_empty name' then
      "Fine. Be that way!"
    else
      let is_question = String.is_suffix name' ~suffix:"?" in
      let has_at_least_1letter = String.exists name' ~f:Char.is_alpha in
      let uppercased = String.uppercase name' in
      let is_yelling = has_at_least_1letter && String.equal name' uppercased in

      if is_question && is_yelling then
        "Calm down, I know what I'm doing!"
      else if is_yelling then
        "Whoa, chill out!"
      else if is_question then
        "Sure."
      else
        "Whatever."
