<script>

export let title;
export let icon;


let theme = '';
export { theme as class };
</script>


        <a href="" class="group pt-5 rounded-2xl border border-dark flex flex-col items-center hover:bg-myPink">
            <img src={icon} alt="something" width="50px" height="50">
            <h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white  text-dark">{title}</h2>
        </a>
   
    <style>
      
       .group:hover img{
        filter: brightness(0) invert(1);
       }
    </style>