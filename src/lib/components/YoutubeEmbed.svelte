
<script >

    export let embedId;
</script>


 <div class="rounded-3xl overflow-hidden ">   <iframe
   
    src={`https://www.youtube.com/embed/${embedId}`}
    frameBorder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
    allowFullScreen
    title="Embedded youtube"
    class="aspect-video w-full"
  />
</div>
 