<script>
  import { navigating } from "$app/stores";
  import profil from "../../gambar/profil.png";
  import Sidebar from "../../komponen/Sidebar.svelte";
  import { infoLogin } from "../../state/infoLogin";

  const menus = [
    { nama: "Data Member", url: "/coach/data_member" },
    { nama: "Jadwal", url: "/coach/jadwal" },
  ];
</script>

<div class="flex h-full overflow-y-hidden bg-slate-200">
  <Sidebar {menus} />
  <div class="flex flex-col flex-1 overflow-y-hidden">
    <div class="flex justify-end p-2 bg-white">
      <a href="/coach/profil" class=" flex gap-2 items-center">
        <img src={profil} class="w-8" alt="" />
        <p class="font-bold">{$infoLogin?.nama}</p>
      </a>
    </div>
    {#if $navigating}
      <div class="flex-1 grid place-content-center text-3xl">
        <div class="w-4 h-20 bg-green-500 rounded-full animate-spin"></div>
      </div>
    {:else}
      <slot />
    {/if}
  </div>
</div>
