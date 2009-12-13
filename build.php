<?
  $src = trim(file_get_contents("extensions"));
  $src = preg_replace('/\n/', ' ', $src);
  $list = explode(" ", $src);
  system("rm -f build.log");
  foreach($list as $item)
  {
    echo "Adding: $item\n...";
    system("./retro --with _support/save.retro --with $item.retro >>build.log");
  }
?>
