'use server';

import { action } from '@/lib/safe-action';
import z from 'zod';

const input = z.object({
  appStoreUrl: z.string().url(),
});

export const addAppStoreAction = action(input, async ({ appStoreUrl }) => {
  console.log(appStoreUrl);
});
