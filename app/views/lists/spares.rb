# <!-- app/views/articles/index.html.erb -->
# <%= cl_image_tag("mvlhqbcqfi0mybii27bw",
#       width: 400, height: 300, crop: :fill) %>

# <!-- for face detection -->
# <%= cl_image_tag("obr5rkstzxtgdti2nopx",
#       width: 150, height: 150, crop: :thumb, gravity: :face) %>

# <br>

# <%= cl_image_tag @list.photo.key, height: 300, width: 400, crop: :fill %>

# <br><br>

# <div class="card-category"
#   style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url('<%= cl_image_path @list.photo.key, height: 300, crop: :fill %>')"
# >
#   Cool article
# </div>
